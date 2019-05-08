Airplane.destroy_all
a1 = Airplane.create :rows => 20, :cols => 5, :name => '747'

Flight.destroy_all
f1 = Flight.create :date => '11/09/2001', :to => 'NYC', :from => 'LAX'
f2 = Flight.create :date => '21/09/2001', :to => 'SYD', :from => 'LAX'

User.destroy_all
u1 = User.create :username => 'sam', :password_digest => 'chicken', :email => 'ben.k.muller@gmail.com', :admin => true
u2 = User.create :username =>'purvi', :password_digest => 'chicken', :email => 'purvi@gmail.in', :admin => true

Reservation.destroy_all
r1 = Reservation.create
r2 = Reservation.create



a1.flights << f1
a1.flights << f2

f1.reservations << r1
u1.reservations << r1

f1.reservations << r2
u1.reservations << r2
