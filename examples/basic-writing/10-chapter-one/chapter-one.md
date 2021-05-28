---
title: 'This is the title of the document'
subtitle: "This is the subtitle"
subject: "some subject"
compact: "some compact text"
lang: de-DE
keywords:
author:
- Matthias Leuffen
date: 2021-10-4
  
abstract: |
    This is the abstract of the following text

mainfont: Ubuntu
fontsize: 11pt
geometry: a4paper
link-citations: true

header-includes:
- \usepackage{hyperref}
- \usepackage{glossaries}
- \makenoidxglossaries
- \loadglsentries{_conf/glossary}

...



# Main Heading

This is a Paragraph of the Main Heading. It can contain [Links](http://some.tld) to external
documents.

## Images

A image as seen in *@fig:orga1 can be inserted easily using markdown and have some fancy cyting [see @t3n_2021 p. 34-35].

![Organisational Image](_media/orga-eg.png){#fig:orga1}

Some others things are found in *@sec:section1.

## Glossary

Add a (+lol) entry.

## Reference a Table {#sec:section1}

The table shown in *@tbl:table1 is referenced.

| Header 1 | Right bound  |
|----------|-------------:|
| body     | body         |
: Some Caption {#tbl:table1}

Or other stuff