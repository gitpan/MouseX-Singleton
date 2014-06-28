use ExtUtils::MakeMaker;

WriteMakefile(
	NAME => 'Mouse::Singleton',
	AUTHOR => 'Nikolay Shulyakovskiy <shulyakovskiy@mail.ru>',
	MAKEFILE => 'Makefile',
	PREREQ_PM => { 
		'Mouse'                    => 0,
		'attributes'               => 0,
	},
);
