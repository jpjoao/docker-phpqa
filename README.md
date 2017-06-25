# docker-phpqa

Docker tools to easily create and run tests for the PHP-SRC. The intent of this library is to help any PHP developer to
help PHP core developers by creating PHPT tests for the language engine and its core extensions.

## How to get it?

All you need to start using it is cloning the repository and have [docker](https://www.docker.com/community-edition) installed on your machine.

## How to use it?

1. Write a PHPT test and add it to the `phpt` folder;
2. Run the `./phpqa` command passing as arguments the filename and the PHP version to run the test (71, 70, 56):
````bash
# without a version the test will run agains PHP 7.1 codebase
./phpqa phpt/examples/closure_061.phpt
# with a version the test will run against the specified version
./phpqa phpt/examples/closure_061.phpt 56
# if you want you can pass `all` as second argument and the test will run against all versions
./phpqa phpt/examples/closure_061.phpt all
````

![Example execution](http://i.imgur.com/xIXGOeZ.gif)


Note that when running the test suit there will be an output message reminding you to run `make test`. This is a standard message and you don't need to run it.
````bash
Build complete.
Don't forget to run 'make test'.
````

## Contributing

If you notice any bug or typo, please feel free to create an issue and/or open a pull request with the fix.

## PHPTestFest2017

This repository intent to facilitate participation and contribution in the PHP Test Festival. More information about it:

* [QA PHP TestFest](https://wiki.php.net/qa/testfest)
* [Some blog posts from Stefan Koopmanschap](http://leftontheweb.com/blog/categories/testfest)
* [Philip Norton's post on the UK PHP TestFest 2010](http://www.hashbangcode.com/blog/php-testfest-uk-2010-and-testing-php)
* [PHPBelgium slides for preparing for TestFest 2009](https://www.slideshare.net/PHPBelgium/preparation-for-php-test-fest-2009)
* [PHPTestFestBrasil](https://phptestfestbrasil.github.io)
* [Sammy's php|tek 2017 talk](https://speakerdeck.com/sammyk/writing-tests-for-php-source-php-tek-2017)
* [Discussion at PHP User Groups list](https://groups.google.com/a/phpcommunity.org/forum/?utm_medium=email&utm_source=footer#!topic/testfest/-C2pcxod65g)
* [Testing with .php files on PHP Internals Book](https://www.phpinternalsbook.com/tests/introduction.html)

# TODO

* Add more PHP versions (PHP 7.2alpha and PHP 5.5 at least);
* Put some effort to shrink the images, either using the Alpine version of them or any other strategy;
* Integrate this repository with CircleCi in order to have the docker images builds tested;
* Improve documentation, adding a session about how to write PHPT.

## Credits

* The tests in the examples folder are part of the [PHP interpreter codebase][php-src] distributed under [PHP License 3.01][php-license].
* The Dockerfile in this repository is inspired and based on the official Dockerfile template and images present in the
[PHP Docker Hub repository][php-docker] also available at the [Docker Library Github repository][docker-lib-php]. The
scripts `docker-php-*` are also from the same [repository][docker-lib-php]. These source code is distributed under [MIT license][docker-lib-php-license].

## LICENSE

Copyright (c) 2017 Bruno Ricardo Siqueira

This work is licensed under the terms of the [MIT license][license].

[php-src]: https://github.com/php/php-src
[php-docker]: https://hub.docker.com/_/php/
[php-license]: https://github.com/php/php-src/blob/master/LICENSE
[docker-lib-php]: https://github.com/docker-library/php
[docker-lib-php-license]: https://github.com/docker-library/php/blob/master/LICENSE
[license]: https://github.com/brunoric/docker-phpqa/blob/master/LICENSE