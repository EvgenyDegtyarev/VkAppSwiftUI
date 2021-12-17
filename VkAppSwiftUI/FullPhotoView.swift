//
//  FullPhotoView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 16.12.2021.
//

import SwiftUI
import Kingfisher

//struct FullPhotoView: View {
//    
//    var photoUser: VKPhoto
//    @ObservedObject var viewModel: PhotosViewModel
//    
//    let networkService = NetworkService()
//    
//    init(viewModel: PhotosViewModel) {
//        self.viewModel = viewModel
//    }
//    
//    var body: some View {
//        List(viewModel.photos, id: \.id) { photos in
//            KFImage(photos.largeURL)
//                .cancelOnDisappear(true)
//        }
//        .onAppear(perform: self.viewModel.getUserPhotos)
//    }
//}
//
