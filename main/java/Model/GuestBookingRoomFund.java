package Model;

public class GuestBookingRoomFund {
    private int guestBookingRoomFundId;
    private int guest;
    private int bookingRoomFund;

    public GuestBookingRoomFund(){
    }

    public GuestBookingRoomFund(int guestBookingRoomFundId, int guest, int bookingRoomFund) {
        this.guestBookingRoomFundId = guestBookingRoomFundId;
        this.guest = guest;
        this.bookingRoomFund = bookingRoomFund;
    }

    public int getGuestBookingRoomFundId() {
        return guestBookingRoomFundId;
    }

    public void setGuestBookingRoomFundId(int guestBookingRoomFundId) {
        this.guestBookingRoomFundId = guestBookingRoomFundId;
    }

    public int getGuest() {
        return guest;
    }

    public void setGuest(int guest) {
        this.guest = guest;
    }

    public int getBookingRoomFund() {
        return bookingRoomFund;
    }

    public void setBookingRoomFund(int bookingRoomFund) {
        this.bookingRoomFund = bookingRoomFund;
    }
}
