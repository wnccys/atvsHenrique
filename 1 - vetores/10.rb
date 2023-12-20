while (true)
    flights = ["32","33","34","35","36"]
    origin = ["Berlim","California","Ceará","Minas Gerais","Tokyo"]
    destiny = ["Moscow","Minnesotta","Bahia","Goiás","Saitama"]
    chairs = [3,9,0,6,9]
    puts "\n\n\n\n\n\n\n\n\n\n\n"
    puts '
                                               |
                                         --====|====--
                                               |  

                                           .-"""""-. 
                                         .;_________;. 
                                        /_/_|__|__|_\_\
                                       ;;-._       _.-;;
                  ,--------------------|    `-. .-;    |--------------------,
                   ``""--..__    ___   ;       ;       ;   ___    __..--""``
                             `"-//  \.._\             /_..//  \-"`
                                \ _//    ;._       _.;    \ _//
                                 `"`        ``---``        `"`
    '
    puts "This is AirFlare, here we make you fly!"
    puts "Which fly is you gonna take today?"
    loop do
        puts "
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |1|-| Consult Information           |
                    +-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |2|-| Reserve                       |
                    +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
                    |3|-| Exit                          |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+     
        "
        opt = gets.to_i
        case opt
        when 1
           puts "
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |1|-| Consult Using Flight Number   |
                    +-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |2|-| Consult Using Flight Origin   |
                    +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
                    |3|-| Consult Using Destiny         |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |4|-| Exit                          |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
            "
            opt = gets.to_i
            case opt
            when 1
                puts "You consulting with Flight Number!"
                puts "The options are: "
                for i in 0..flights.length-1
                    puts "#{flights[i]} - #{chairs[i]} chairs available."
                end
            when 2
                puts "You consulting with Origin!"
                puts "The options are: "
                for i in 0..origin.length-1
                    puts "#{origin[i]} - #{chairs[i]} chairs available."
                end
            when 3
                puts "You consulting with Destiny!"
                puts "The options are: "
                for i in 0..destiny.length-1
                    puts "#{destiny[i]} - #{chairs[i]} chairs available."
                end
            when 4
                break
            end
            # end2case
        when 2
            loop do 
                puts "You choose to reserve!"
                puts "Enter the flight number you want to reserve!"
                info = gets.chop
                pp flights.include? info
                pp (chairs[flights.index(info)] > 0)
                if (flights.include? info) && (chairs[flights.index(info)] > 0)
                    puts "You successfully reserved!"
                    chairs[flights.index(info)] -= 1
                    break
                else
                    puts "Choose a valid option!"
                    for i in 0..flights.length-1
                        puts "#{flights[i]} - #{chairs[i]} | From: #{origin[i]} To: #{destiny[i]}"
                    end
                end
            end
        when 3
            puts "Shutting Down..."
            exit
        end
    end
end
