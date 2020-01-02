/**
 *
 * script.js
 *
 * 	This script contains the main functions that we gonna use in our admin interface.
 *
 *
 *
 */

$(document).ready(function () {
  $('#demo').pagination({
    dataSource: [1, 2, 3, 4, 5, 6, 7, 8],
    pageSize: 3,
  })
})
