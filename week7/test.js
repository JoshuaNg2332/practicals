// var it = function(){}
function it( callback ) {
  // console.log(callback)
  callback()
  // depending on it, log Pass or log Fail
  // console.log('Pass')
}

function expect(a){
  return {
    toEqual: function(b) {
      if (a === b) {
        console.log('Pass')
      } else {
        console.log('Fail')
      }
    }
  }
}

function expect(a){
  
  function toEqual(b) {
    if (a === b) {
      console.log('Pass')
    } else {
      console.log('Fail')
    }
  }

  var result = {}
  result.toEqual = toEqual
  return result

}


// var callback = function(){expect(2+2).toEqual(4)}
// it(callback)

it(function(){
  expect(2+2).toEqual(4)
})
// Pass

// it(   function(){expect(2+3).toEqual(4)}   )
it(function(){
  expect(2+3).toEqual(4)
})
// Fail

it(function(){
  expect(2*56).toEqual(100)
})
// var a = expect(2+3)
// a.toEqual(4)