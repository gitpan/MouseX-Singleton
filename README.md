MouseX-Singleton
===============

# VERSION

This document describes MouseX-Singleton version 0.5.1

# SYNOPSIS

    package Foo;
    use Mouse; # automatically turns on strict and warnings
    extends 'MouseX::Singleton';

    has bar => (is => 'rw', isa => 'Int');

    sub static_method {
        my($pkg) = @_;
    }

    sub non_static_method : method {
        my($self) = @_;
        $self->bar($self->bar+1);
    }


    __PACKAGE__->meta->make_immutable();

    use Foo; # or Foo->import();

    Foo->new(); #create instance
    Foo->non_static_method();

# DESCRIPTION

[Moose::Singleton] a design pattern used in object-oriented programming to permit no more than one instance of a class.

In software engineering, the singleton pattern is a design pattern that restricts the instantiation of a class to one object. This is useful when exactly one object is needed to coordinate actions across the system. The concept is sometimes generalized to systems that operate more efficiently when only one object exists, or that restrict the instantiation to a certain number of objects. The term comes from the mathematical concept of a singleton.

# KEYWORDS

## use attributes

for declare non static method of singleton object use attributes 'method'

# SOURCE CODE ACCESS

We have a public git repository [https://github.com/Nikolo/MouseX-Singleton](https://github.com/Nikolo/MouseX-Singleton):.

    git clone https://github.com/Nikolo/MouseX-Singleton.git

# SEE ALSO

[Mouse](https://metacpan.org/pod/Mouse)

# AUTHOR

Nikolas Shulyakovskiy <shulyakovskiy at mail.ru>

# BUGS

All complex software has bugs lurking in it, and this module is no exception.
Please report any bugs to `bug-MouseX-Singleton at rt.cpan.org`, or through the web
interface at [http://rt.cpan.org/Public/Dist/Display.html?Name=MouseX-Singleton](http://rt.cpan.org/Public/Dist/Display.html?Name=MouseX-Singleton)

# COPYRIGHT AND LICENSE

Copyright (c) 2014 Nikolay Shulyakovskiy

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.
