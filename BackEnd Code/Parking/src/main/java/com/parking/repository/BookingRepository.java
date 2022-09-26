package com.parking.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.parking.Entities.Booking;
import com.parking.Entities.Parking;

public interface BookingRepository extends JpaRepository<Booking, Long> {
	@Modifying
	@Query(value = "insert into bookings (exit_time,duration,slot_number,entry_time,parking_id,user_id,v_id) values (?,?,?,?,?,?,?)", nativeQuery = true)
	int addBookingToEntity(LocalDateTime exitTime, int duration, int slotno, LocalDateTime startTime, Long pid,
			Long userId, Long vehicleId);

	@Query(value = "select duration from bookings where user_id=1 and booking_id=?", nativeQuery = true)
	int getDuration(Long user, long bookingid);

	@Query(value = "select * from bookings where parking_id=? and exit_time>NOW()", nativeQuery = true)
	List<Booking> getListofslot(Long id);
     @Query(value="select * from bookings where user_Id=? and booking_id=12",nativeQuery = true)
	Booking getbookbyid(Long useid);
}