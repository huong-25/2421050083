var danhsachvd = [
    {
        id: 1,
        duongdananh: "Artboard_3_1.jpg",
    },
    {
        id: 2,
        duongdananh: "edogawa-conan.jpg",
    },
    {
        id: 3,
        duongdananh: "momo-upload-api-210727143703-637629934234165196.jpg",
    },
    {
        id: 4,
        duongdananh: "nhung_bo_phim_hoat_hinh_gan_lien_voi_tuoi_tho_Doraemon_Chu_Meo_May_Den_Tu_Tuong_Lai_e2b492da7d.jpg",
    },
    {
        id: 5,
        duongdananh: "nhung-bo-phim-hoat-hinh-gan-lien-voi-tuoi-tho-1.jpg",
    },
    {
        id: 6,
        duongdananh: "nhung-bo-phim-hoat-hinh-gan-lien-voi-tuoi-tho-21.jpg",
    },
    {
        id: 7,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 8,
        duongdananh: "photo-12-16688686838551146101501.webp",
    },
    {
        id: 9,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 10,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 11,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 12,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 13,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 14,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 15,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 16,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 17,
        duongdananh: "photo-1-1472807212772.webp",
    },
    {
        id: 18,
        duongdananh: "photo-1-1472807212772.webp",
    },
   
    {
        id: 19,
        duongdananh: "photo-1-1472807212772.webp",
    },
   {
        id: 20,
        duongdananh: "photo-1-1472807212772.webp",
    },
   


];
function chonbai(id){
    for (let i = 0; i < danhsachvd.length; i++){
        if(danhsachvd[i].id == id ){
            document.getElementsByClassName("banner-img")[0].src =danhsachvd[i].duongdananh;
        }
    }

};