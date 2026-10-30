var danhsachvd = [
            {
                id: 1,
                duongdananh: "hinh-nen-am-nhac-33.jpg",
                duongdanvideo:"https://www.youtube.com/embed/cwlToxaWuL8?si=IoZGaEwZ-bFw8x2v" ,
            },
            {
                id: 2,
                duongdananh: "hinh-nen-am-nhac-33.jpg",
                duongdanvideo: "https://www.youtube.com/embed/1qFzxH3R9rQ?si=TrZC4QDAtwIlA2zY" ,
            },
            {
                id: 3,
                duongdananh: "hinh-nen-am-nhac-33.jpg",
                duongdanvideo: "https://www.youtube.com/embed/1qFzxH3R9rQ?si=8-8cYC4k5tRHDJUn" ,
            },
            {
                id: 4,
                duongdananh: "hinh-nen-am-nhac-33.jpg",
                duongdanvideo: "https://www.youtube.com/embed/zYBLt8wWPPU?si=pQ4151R8b7M-_JyT" ,
            },
        ];
        function chonBai(id){
            for (let i = 0 ; i < danhsachvd.lenght; i++ ){
                if( danhsachvd[i].id == id){
                    document.getElementsByClassName("video")[0].src = danhsachvd[i].duongdanvideo;
                }
            }

        }