//
//  GenreListPresenterProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 26/4/2024.
//

import Foundation
import UIKit

protocol GenreListPresenterProtocol {

  var view: GenreListViewProtocol? { get set }
  var interactor: GenreListInteractorProtocol? { get set}
  var router: GenreListRouterProtocol? { get set }
  func viewDidLoadGenreList()
  func interactorDidGetGenreListData(result:Result<[Genre],Error>)
  func tapDiscoverGenre(genre:Genre,view:UIViewController)
}
