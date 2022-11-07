def credit_card_checker(card_number)
  new_card_number = card_number.gsub(/\s/, "")
  match_data = new_card_number.match(/^([45])\d{15}$/)
  if match_data
    if match_data[1] == "4"
      return "Visa"
    elsif match_data[1] == "5"
      return "MasterCard"
    end
  end
  return false
end

# if its invalid, return false
# if its valid, return either Visa or MasterCard

# If it starts with 4, Visa
#                   5, MasterCard
