# SSOjs

A Legislation Parser

This is a tool to parse the legislation on Singapore Statutes Online
in order to enhance the UI/X of the content using modern design
philosophy and web technologies.


### Motivation

Legislation are hard to read as is, with all the legalese; any system
purpoting to deliver legal content ought to strive for easy
understanding and absorption of the content.  For example, in the
Securities and Futures Act (Chapter 289 of Singapore), there are more
than 15 Parts, each containing Divisions which may than be subdivided
into Subdivisions, and the word "debenture" is defined 10 times at
different parts of the Act. At any point, when reading a particular
portion of the Act, the is no indication which definition of
"debenture" applies.

It is possible to parse the DOM structure to identify each time the
word "debenture" is defined, and apply the text of the definition to a
`<dfn>` tag as such: `<dfn title="content of the definition">defined
word or phrase</dfn>`.

An exapmle based on the Unfair Contract Terms Act (Chapter 396 of
Singapore) is shown below. Defined terms are displayed in green
italicized font, and hovering the mouse cursor over the defined terms
shows the definition (mouse cursor in the screenshot below is missing,
but it's hovering over the words "personal injury").

![Demo Definition Unfair Contract Terms
Act](Documentation/img/demo-unfair-contract-terms-act.png "Demo
Definition Unfair Contract Terms Act")
