# vhdl_vim Plugin

## Installation Instructions

You must have `ruby`, `gem`, and `git` installed before executing the following
instructions.

1. git clone https://github.com/darkwind-mt/vhdl\_parser.git
2. cd vhdl\_parser
3. gem build vhdl\_parser.gemspec
4. gem install vhdl\_parser-\*.gem

If you are using `vundle`, you can install the software with the following
command in your `.vimrc`

    Bundle 'https://github.com/darkwind-mt/vhdl_vim.git'

You must also list a configuation line that specifies the location of the the
`vhdl\_parser` gem:

    let g:vhdl\_parser\_parse\_dir = 'C:/Ruby192/lib/ruby/gems/1.9.1/gems/vhdl\_parser-0.3/lib/'

## Usage

The follwoing commands are available in `insert` and `normal` modes:

1. `<Leader>vy` - *In the current VHDL file* copy the file location to the `@v`
   register for usage with the paste commands.
2. `<Leader>vs` - Paste signals that correspond to the first entity in the `@v`
   file

The follwoing commands are available in `insert` and `normal` modes:

1. `<Leader>vy` - *In the current VHDL file* copy the file location to the `@v`
   register for usage with the paste commands.
2. `<Leader>vs` - Paste signals that correspond to the first entity in the `@v`
   file.
3. `<Leader>vc` - Paste component that corresponds to the first entity in the
    `@v` file.
4. `<Leader>vc` - Paste instantiation that corresponds to the first entity in
    the `@v` file.

If you don't like the formatting, you can always execute the `gg=G` command to
reformat your entire file.
