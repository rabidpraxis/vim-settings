#!/usr/bin/env ruby

require 'fileutils'

bundles = [
  "git://github.com/vim-scripts/bufexplorer.zip.git",
  "git://github.com/scrooloose/nerdtree.git",
  "git://github.com/bronson/vim-closebuffer.git",
  "git://github.com/vim-scripts/IndexedSearch.git",
  "git://github.com/Raimondi/YAIFA.git",
  "git://github.com/mhz/vim-matchit.git",
  "git://github.com/scrooloose/nerdcommenter.git",
  "git://github.com/tpope/vim-surround.git",
  "git://github.com/vim-scripts/taglist.vim",
  "git://github.com/msanders/snipmate.vim.git",
  "git://github.com/scrooloose/snipmate-snippets.git",
  "git://github.com/vim-scripts/Align.git",
  "git://github.com/tpope/vim-repeat.git",
  "git://github.com/tpope/vim-fugitive.git",
  "git://github.com/ervandew/supertab.git",
  "git://github.com/vim-scripts/jQuery.git",
  "git://github.com/tpope/vim-git.git",
  "git://github.com/tpope/vim-markdown.git",
  "git://git.wincent.com/command-t.git"
]

home_dir = File.dirname(__FILE__)
bundles_dir = File.join(File.dirname(__FILE__), "bundle")

bundles.each do |url|
  FileUtils.cd(home_dir)
  dir = url.split('/').last.sub(/\.git$/, '')
  f_dir = File.join(bundles_dir, dir)
  if !test ?d, f_dir
    puts "Cloning #{dir}"
    `git submodule add #{url} #{f_dir}`
  else
    puts "Updating #{dir}"
    FileUtils.cd(f_dir)
    `git pull`
  end
end
