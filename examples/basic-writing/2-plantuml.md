## Another heading

## And section

The diagramm in *@fig:diag2  is generated automatically


```{ .plantuml height=30% id=fig:diag2 caption='some caption' }
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice <-- Bob: another authentication Response
```


## And a Mindmap

```{ .plantuml height=10% id=fig:mindmap1 caption='A simple Mindmap' }
@startmindmap
* I am hungry
** I feel my stomach
** I haven't eat a lot
@endmindmap
```

## Wbs

```{ .plantuml height=20% id=fig:mindmap1 caption='A simple Mindmap' }
@startwbs
* I am hungry
** I feel my stomach
** I haven't eat a lot
  +_ Some Text
  -_ Some left text
@endwbs
```



