use ExtUtils::MakeMaker;

WriteMakefile (
               AUTHOR        => 'Casey West <casey@geeknest.com>',
               ABSTRACT      => "Email::Folder Access to IMAP over SSL Folders",
               NAME          => 'Email::Folder::IMAPS',
               PREREQ_PM     => {
                                 'Test::More'             => '0.47',
                                 'Email::FolderType::Net' => '',
                                 'Email::Folder::IMAP'    => '',
                                 'Net::IMAP::Simple::SSL' => '',
                                 'URI::imaps'             => '',
                                },
               VERSION_FROM  => 'lib/Email/Folder/IMAPS.pm',
              );
