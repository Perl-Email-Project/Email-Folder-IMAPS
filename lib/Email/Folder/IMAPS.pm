package Email::Folder::IMAPS;
# $Id: IMAPS.pm,v 1.4 2005/05/04 02:15:37 cwest Exp $
use strict;

use vars qw[$VERSION];
$VERSION   = '1.04';

use base qw[Email::Folder::IMAP];
use Net::IMAP::Simple::SSL;
$Email::Folder::IMAP::IMAP = 'Net::IMAP::Simple::SSL';

1;

__END__

=head1 NAME

Email::Folder::IMAPS - Email::Folder Access to IMAP over SSL Folders

=head1 SYNOPSIS

  use Email::Folder;
  use Email::FolderType::Net;
  
  my $folder = Email::Folder->new('imaps://example.com'); # read INBOX
  
  print $_->header('Subject') for $folder->messages;

=head1 DESCRIPTION

This software adds IMAPS functionality to L<Email::Folder|Email::Folder>.
Its interface is identical to the other
L<Email::Folder::Reader|Email::Folder::Reader> subclasses.

=head2 Parameters

C<username> and C<password> parameters may be sent to C<new()>. If
used, they override any user info passed in the connection URI.

=head2 Folder Specification

Folders are specified using a simplified form of the IMAP URL Scheme
detailed in RFC 2192. Not all of that specification applies. Here
are a few examples.

Selecting the INBOX.

  https://foo.com

Selecting the INBOX using URI based authentication. Remember that the
C<username> and C<password> parameters passed to C<new()> will override
anything set in the URI.

  https://user:pass@foo.com

Selecting the p5p list.

  https://foo.com/perl/perl5-porters

=head1 SEE ALSO

L<Email::Folder>,
L<Email::Folder::Reader>,
L<Email::Folder::IMAP>,
L<Email::FolderType::Net>,
L<URI::imaps>,
L<Net::IMAP::Simple::SSL>.

=head1 AUTHOR

Casey West, <F<casey@geeknest.com>>.

=head1 COPYRIGHT

  Copyright (c) 2004 Casey West.  All rights reserved.
  This module is free software; you can redistribute it and/or modify it
  under the same terms as Perl itself.

=cut
