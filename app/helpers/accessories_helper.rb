module AccessoriesHelper
	def check_stock(stock)
		if stock == 0
			content_tag(:span, "Out of Stock", class: "out_stock")
		else
			content_tag(:span, "In stock", class: "in_stock")
		end
	end

	def check_price(price)
	  number_to_currency price
	end
end


