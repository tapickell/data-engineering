FactoryGirl.define do
  factory :upload do
    filename 'uploaded_file'
    data "purchaser name\titem description\titem price\tpurchase count\tmerchant address\tmerchant name\nTom Jones\tShoes\t45\t1\t1253 North Main st\tNordrack\nJose Cuervo\tBeverages\t25\t2\t3475 Little Mexico ln\tJoes Beverages\n"
    revenue 0
  end
end
