package MetaCPAN::Web::Test::HTML5::Element::SVG;
use strict;
use warnings;

use parent 'MetaCPAN::Web::Test::HTML5::Element';

sub starttag_XML {
    my $self   = shift;
  <<<<<<< haarg/html5-parser

    local $self->{xmlns} = "http://www.w3.org/2000/svg"
        if $self->{_tag} eq 'svg';
    my @ns = grep /^xmlns:/, keys %$self;
    local @{$self}{@ns};
    delete @{$self}{@ns};
  =======
    my $is_svg = $self->{_tag} eq 'svg';
    local $self->{xmlns}         = "http://www.w3.org/2000/svg" if $is_svg;
    local $self->{'xmlns:xlink'} = "http://www.w3.org/1999/xlink"
        if $is_svg;
  >>>>>>> master

    return $self->SUPER::starttag_XML(@_);
}

sub element_class {
    $_[0]->{_element_class} || __PACKAGE__;
}

1;
