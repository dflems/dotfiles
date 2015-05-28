#!/usr/bin/env ruby
require 'fileutils'
SCRIPT_DIR = File.expand_path(File.dirname(__FILE__))
USERDATA_DIR = File.expand_path('~/Library/Developer/Xcode/UserData')

# replace the first dir with a symlink to the second dir
def replace_and_link_dir(lib_dir, dot_dir)
  lib_dir = File.join(USERDATA_DIR, lib_dir)
  dot_dir = File.join(SCRIPT_DIR, dot_dir)
  if File.exists?(lib_dir)
    if File.symlink?(lib_dir)
      # if a symlink, just remove it
      FileUtils.rm_f(lib_dir)
    else
      # otherwise, back it up
      FileUtils.mv(lib_dir, "#{lib_dir}.#{Time.now.to_i}.bak")
    end
  end
  FileUtils.mkdir_p(File.dirname(lib_dir))
  FileUtils.ln_s(dot_dir, lib_dir)
end

# install snippets and themes
replace_and_link_dir('CodeSnippets', 'snippets')
replace_and_link_dir('FontAndColorThemes', 'themes')
