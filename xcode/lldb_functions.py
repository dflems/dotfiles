#!/usr/bin/env python

import lldb

###############################################################################
# Print JSON to the console
# https://gist.github.com/jparishy/6629273

def pjson(debugger, command, result, internal_dict):
    '''Print the given object as JSON.'''
    debugger.HandleCommand("po [[NSString alloc] initWithData:(id)[NSJSONSerialization dataWithJSONObject:({}) options:0 error:nil] encoding:4]".format(command))

###############################################################################
# NSData-to-NSString

def stringdata(debugger, command, result, internal_dict):
    '''Print the string represented by the given NSData object.'''
    debugger.HandleCommand('po [[NSString alloc] initWithData:({}) encoding:4]'.format(command))

###############################################################################
# Extended type info (introspection)
# http://bou.io/ExtendedTypeInfoInObjC.html

def ivars(debugger, command, result, internal_dict):
    '''Print a list of ivars for the given object.'''
    debugger.HandleCommand('po [({}) _ivarDescription]'.format(command))

def methods(debugger, command, result, internal_dict):
    '''Print a list of methods for the given object.'''
    debugger.HandleCommand('po [({}) _shortMethodDescription]'.format(command))

def methods_all(debugger, command, result, internal_dict):
    '''Print a verbose list of methods for the given object.'''
    debugger.HandleCommand('po [({}) _methodDescription]'.format(command))

###############################################################################
# Register functions

def _register(debugger, name):
    debugger.HandleCommand(
        "command script add -f lldb_functions.{0} {0}".format(name))

def __lldb_init_module(debugger, internal_dict):
    _register(debugger, 'pjson')
    _register(debugger, 'stringdata')
    _register(debugger, 'ivars')
    _register(debugger, 'methods')
    _register(debugger, 'methods_all')
