#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 3;

{
	package Foo;
	use Mouse;
	extends 'MouseX::Singleton';

	sub static_method {
		return $_[0];
	}

	sub non_static_method : method {
		return $_[0];
	}

	__PACKAGE__->meta->make_immutable();
	no Mouse;	
}

Foo->import();

my $obj = Foo->new();

isa_ok( $obj, 'Foo');
is(Foo->static_method(), 'Foo', 'Static method return pkg name');
is(Foo->non_static_method(), $obj, 'Non static method return reference to self');

