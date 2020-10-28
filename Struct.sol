pragma solidity ^0.6.6;

contract test {
   struct Book { 
      string title;
      string author;
      uint book_id;
   }
   Book book;

   function setBook() public {
      book = Book('Burning White', 'Brent Weeks', 1);
   }
   function getBookId() public view returns (uint) {
      return book.book_id;
   }
}
