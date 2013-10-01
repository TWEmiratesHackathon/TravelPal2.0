$(function(){

    var addr = $(location).attr('href');
    var navlist = $('a[href="' + addr + '"]').parent();
//    console.log(navlist);
    navlist.addClass('active');

    var total_page = $('ul.pagination').data('total_page');
    var current_page = $('ul.pagination').data('current_page');

    var loop=[];
    for (i=1; i<=total_page; i++){
        loop.push(i);
    }
    var ulpagination = $('ul.pagination');

    $.each(loop, function(index,value){
        if (value == current_page){
            ulpagination.append('<li' + ' class="active"><a href="/home?page=' + value +'"' +'>' + value +'</a></li>');
        }
        else{
            ulpagination.append('<li><a href="/home?page=' + value +'"' + '>' + value +'</a></li>');
        }

    });

    $('.pagination a').on('click', function(event){
//        console.log('Hey!');
        event.preventDefault();
        var link = $(this);
//        console.log("we are here!");
//        console.log(link.attr('href'));

        $.ajax(link.attr('href'), {
            dataType: 'json',
            success: function(response){
                $('div.story_list').remove();
                $('div.stories').append('<div class="row bottom-buffer story_list"></div>');

                $.each(response[0], function(index, story){
//                    console.log(story);
                    $('div.story_list').append('<div class="col-md-3 bottom-buffer story_entry">' +
                        '<div class="thumbnail"><img alt=' +story.location +
                        ' src="' + response[1][index] + '">'+ '<div class="caption"><h4>'+ story.location +
                        '</h4><p>'+ story.story_date + '</p><p>'+ story.story_entry +'</p></div>'
                        +'</div></div>');

//                     console.log(story.location);
//                     console.log(story.page_number);
                });

                var current_page = response[3];

//                ulpagination.hide();
//                console.log('current_page: ' + current_page);

                $.each($('.pagination li'), function(index,value){
                    if (index+1 == current_page){
                        $(value).addClass('active');
                    }
                    else{
                        $(value).removeClass();
                    }

                });
            }
        });  //close ajax

    }); //close click event


}); //close jquery