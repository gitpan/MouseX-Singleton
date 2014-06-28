package MouseX::Singleton;

use utf8;
use attributes;
use Mouse;

our $VERSION = '0.5.1';

our $context;
sub import {
	my $pkg = shift;
	foreach my $method ($pkg->meta->get_method_list()) {
		my $attr = attributes::get( \&{$pkg."::".$method} )||'';
		next if $attr ne 'method';
		$pkg->meta->_install_modifier( 'around', $method => sub {
			my $orig = shift;
			my $self = shift;
			$self = $context unless ref $self;
			die "Instance not created" unless $self;
			return $self->$orig(@_);
		});
	}
}

sub BUILD { $context = $_[0] }

__PACKAGE__->meta->make_immutable;

1;
