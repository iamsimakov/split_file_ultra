# Split File Ultra

## Usage

Just split file to many files.
Inspired by https://www.npmjs.com/package/split-file
Based on https://stackoverflow.com/a/6153843/5005026

## Getting Started

1. Install gem:

        $ gem install split_file_ultra

or for IRB

        > require 'split_file_ultra'

2. And use it:

        > SplitFileUltra.split(original, 1024*1024)

where
`original` - name of spliting file
`1024*1024` - size of chunk, optional, default = 1024*1024 bytes

Returns array of files.


## Contributing

Be free for it! Welcome!

## Code Status

I think it is nearly RC.

## License

File Rotator is released under the [MIT License](https://opensource.org/licenses/MIT).
