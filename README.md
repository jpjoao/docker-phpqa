# docker-phpqa

Docker tools to easily create and run tests for the PHP-SRC. The intent of this library is help any PHP developer to
help PHP core developers creating PHPT tests for the language engine and its extensions.

## How to get it?

Just clone the repository to start using it.

## How to use it?

1. Write a PHPT test and add it to the `phpt` folder;
2. Run the `./phpqa` command passing as arguments the filename and the PHP version to run the test (71, 70, 56):
````bash
# without a version the test will run agains PHP 7.1 codebase
./phpqa examples/closure_061.phpt
# with a version the test will run against the specified version
./phpqa examples/closure_061.phpt 56
# if you want you can pass `all` as second argument and the test will run against all versions
./phpqa examples/closure_061.phpt all
````

## Contributing

If you notice any bug or typo, please feel free to create an issue and/or open a pull request with the fix.

## PHPTestFest2017

This repository intent to facilitate participation and contribution in the PHP Test Festival. More information about it:

[PHPTestFestBrasil][https://github.com/PHPTestFestBrasil/PHPTestFest]

[PHPTestFestBrasil Github][https://phptestfestbrasil.github.io/]

[QA PHP TestFest][https://wiki.php.net/qa/testfest]

## Credits

The tests in the examples folder are part of the [PHP interpreter codebase][php-src]. The Dockerfile in this repository
is inspired and based on the official Dockerfile template present in the [PHP Docker Hub repository][https://hub.docker.com/_/php/].

## LICENSE

Copyright (c) 2017 Bruno Ricardo Siqueira

This work is licensed under the terms of the [MIT license][license].

[php-src]: https://github.com/php/php-src
[license]: https://github.com/brunoric/docker-phpqa/blob/master/LICENSE