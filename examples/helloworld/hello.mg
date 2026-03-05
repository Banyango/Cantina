---
description: A template that demonstrates basic markdown formatting.
---
<<
# This is a normal heading
  - A list
A **bold** statement followwed by *italics* and a [link](https://www.banyango.com/margarita/latest).

Anything you can do in markdown you can do here.
>>
for item in items:
  << - This is also markdown -> ${item} >>
