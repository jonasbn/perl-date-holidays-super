[![CPAN version](https://badge.fury.io/pl/Date-Holidays-Super.svg)](http://badge.fury.io/pl/Date-Holidays-Super)
[![Build Status](https://travis-ci.org/jonasbn/Date-Holidays-Super.svg?branch=master)](https://travis-ci.org/jonasbn/Date-Holidays-Super)
[![Coverage Status](https://coveralls.io/repos/jonasbn/Date-Holidays-Super/badge.png)](https://coveralls.io/r/jonasbn/Date-Holidays-Super)

# NAME

Date::Holidays::Super - a SUPER class for the Date::Holidays::\* modules

# SYNOPSIS

        package MyHolidays;

        use Date::Holidays::Super;
        use vars qw(@ISA);

        @ISA = qw(Date::Holidays::Super);

        my $mh = MyHolidays->new();

        my $bool = $mh->is_holiday( ... );

        my $hashref = $mh->holidays( ... );

# VERSION

This POD described version 0.03 of Date::Holidays::Super

# DESCRIPTION

This is a SUPER class intended for use by Date::Holidays::\* modules.

The goal is to have all the existing and future modules implement the
same methods, so they will have a uniform usage and can be used in
polymorphic context or can be easily adapted into the Date::Holidays
class.

The class provides two methods: **is\_holiday** and **holidays** an
alternative to this class is Date::Holidays::Abstract, which does not
implement these methods, but require that they are implemented.

If you want to use Date::Holidays::Super and want to comply with my
suggestions to the methods that ought to be implemented, you should
overload the methods provided by this class, when and if you have the
time in your Date::Holidays::\* module.

- is\_holiday
- holidays

# SUBROUTINES/METHODS

## is\_holiday

Should at least take 3 arguments:

- year, four digits
- month, between 1-12
- day, between 1-31

The return value from is holiday is either a 1 or 0 indicating true of
false, indicating whether the specified date is a holiday in the given
country's national calendar.

**is\_holiday** in the SUPER class returns 0 indicating false, since
nothing intelligent can be said about holidays without specifying a
national calendar.

Additional arguments are at the courtesy of the author of the using
module/class.

## holidays

Should at least take one argument:

- year, four digits

Returns a reference to a hash, where the keys are date represented as
four digits. The two first representing month (01-12) and the last two
representing day (01-31).

The value for the key in question is the local name for the holiday
indicated by the day. The resultset will of course vary depending on
the given country's national holiday.

**holidays** in the SUPER class return a reference to an empty hash,
since nothing intelligent can be said about holidays without specifying
a national calendar.

Additional arguments are at the courtesy of the author of the using
module/class.

\--

[Date::Holidays](https://metacpan.org/pod/Date::Holidays) uses the requirements defined by this module and this
module can therefor be used with success in conjunction with this.

This is an alternative to the abstract class [Date::Holidays::Abstract](https://metacpan.org/pod/Date::Holidays::Abstract).

Suggestions for changes and extensions are more than welcome.

# DIAGNOSTICS

No special exceptions/diagnostics are used at this time, please see TODO file

# CONFIGURATION AND ENVIRONMENT

No special configuration and/or environment required

# DEPENDENCIES

No dependencies at this time

# INCOMPATIBILITIES

No known incompatibilities at this time

# BUGS AND LIMITATIONS

Please report issues via CPAN RT:

    http://rt.cpan.org/NoAuth/Bugs.html?Dist=Date-Holidays-Super

or by sending mail to

    bug-Date-Holidays-Super@rt.cpan.org

# SEE ALSO

- [Date::Holidays::Abstract](https://metacpan.org/pod/Date::Holidays::Abstract)
- [Date::Holidays](https://metacpan.org/pod/Date::Holidays)
- Date::Holidays::\*

# AUTHOR

Jonas B. Nielsen, (jonasbn) - `<jonasbn@cpan.org>`

# LICENSE AND COPYRIGHT

Date-Holidays-Super is (C) by Jonas B. Nielsen, (jonasbn) 2004-2014

Date-Holidays-Super is released under the Artistic License 2.0