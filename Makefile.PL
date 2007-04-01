use strict;
use ExtUtils::MakeMaker;

WriteMakefile (
  AUTHOR        => 'Casey West <casey@geeknest.com>',
  ABSTRACT      => "Email::Folder Access to IMAP over SSL Folders",
  NAME          => 'Email::Folder::IMAPS',
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM     => {
    'Test::More'             => '0.47',
    'Email::FolderType::Net' => '',
    'Email::Folder::IMAP'    => '1.102', # _imap_class method
    'Net::IMAP::Simple::SSL' => '1.3',   # :port
    'URI::imaps'             => '',
  },
  VERSION_FROM  => 'lib/Email/Folder/IMAPS.pm',
);
