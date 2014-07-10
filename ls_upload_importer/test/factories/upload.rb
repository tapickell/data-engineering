FactoryGirl.define do
  factory :upload do
    filename 'uploaded_file'
    data "purchaser name\titem description\titem price\tpurchase count\tmerchant address\tmerchant name\nSnake Plissken\t$10 off $20 of food\t10.0\t2\t987 Fake St\tBob's Pizza\nAmy Pond\t$30 of awesome for $10\t10.0\t5\t456 Unreal Rd\tTom's Awesome Shop\nMarty McFly\t$20 Sneakers for $5\t5.0\t1\t123 Fake St\tSneaker Store Emporium\nSnake Plissken\t$20 Sneakers for $5\t5.0\t4\t123 Fake St\tSneaker Store Emporium\n"
    revenue 0
  end
end
