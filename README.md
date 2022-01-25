# Cheap date

Stuart has been invited to a dinner party, and he decides to purchase a bottle
of wine.

However, he has little knowledge of how to choose a good bottle.

Being a very frugal gentleman (yet disliking looking like a cheapskate), he
decides to use a very simple rule. In any selection of two or more wines, he
will always buy the second-cheapest.

Given an array of wine objects, write a function that returns the name of the
wine he will buy for the party. If given an empty array, return null. If given
an array of only one, Stuart will buy that wine.

## Examples

```javascript
chosenWine([
  { name: "Wine A", price: 8.99 },
  { name: "Wine 32", price: 13.99 },
  { name: "Wine 9", price: 10.99 }
]) //=> "Wine 9"

chosenWine([{ name: "Wine A", price: 8.99 }]) //=> "Wine A"

chosenWine([]) //=> null
```

## Notes

All wines will be different prices, so there is no confusion in the ordering.

If it seems straightfoward, feel free to show off some skill.

## Example tests

```javascript
Test.assertEquals(chosenWine([{name: "Wine A", price: 8.99}, {name: "Wine 32", price: 13.99}, {name: "Wine 9", price: 10.99}]), "Wine 9");
Test.assertEquals(chosenWine([{name: "Wine A", price: 8.99}, {name: "Wine B", price: 9.99}]), "Wine B");
Test.assertEquals(chosenWine([{name: "Wine A", price: 8.99}]), "Wine A");
Test.assertEquals(chosenWine([]), null);
Test.assertEquals(chosenWine([{name: "Wine A", price: 8.99}, {name: "Wine 389", price: 109.99}, {name: "Wine 44", price: 38.44}, {name: "Wine 72", price: 22.77}]), "Wine 72");
```
