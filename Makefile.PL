use inc::Module::Install;
name 'Teng';
all_from 'lib/Teng.pm';

requires 'parent';
requires 'Carp';
requires 'Class::Accessor::Lite' => 0.05;
requires 'Class::Load' => 0.06;
requires 'Data::Page';
requires 'DBI';
requires 'DBIx::Inspector' => '0.03';
requires 'DBIx::TransactionManager' => '1.06';
requires 'SQL::Maker' => 0.14;
requires 'Data::Page::NoTotalEntries' => '0.02';

author_tests('xt');

test_requires 'Test::Requires';
test_requires 'Test::More' => '0.96';
test_requires 'Test::SharedFork' => 0.15;
test_requires 'Test::mysqld'     if $Module::Install::AUTHOR;
test_requires 'Test::postgresql' if $Module::Install::AUTHOR;

tests 't/*.t t/*/*.t';

auto_set_repository;
WriteAll;
