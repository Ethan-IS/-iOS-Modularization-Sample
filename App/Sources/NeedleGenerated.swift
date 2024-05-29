

import Analytics
import AnalyticsInterface
import Data
import Domain
import Features
import Foundation
import HomeInterface
import HomePresentation
import HomeUI
import NeedleFoundation
import Remote
import SettingsInterface
import SettingsPresentation
import SettingsUI
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

private func parent2(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class RepositoryDependency7488f146cdfa18e51394Provider: RepositoryDependency {
    var remoteDataSourceBuilder: RemoteDataSourceBuilder {
        return rootComponent.remoteDataSourceBuilder
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->RepositoryComponent
private func factory89fed910da85ca3e434eb3a8f24c1d289f2c0f2e(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RepositoryDependency7488f146cdfa18e51394Provider(rootComponent: parent1(component) as! RootComponent)
}
private class UseCaseDependencya6f49ba63a6216781bbbProvider: UseCaseDependency {
    var repositoryBuilder: RepositoryBuilder {
        return rootComponent.repositoryBuilder
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->UseCaseComponent
private func factory53509956f256115531dcb3a8f24c1d289f2c0f2e(_ component: NeedleFoundation.Scope) -> AnyObject {
    return UseCaseDependencya6f49ba63a6216781bbbProvider(rootComponent: parent1(component) as! RootComponent)
}
private class RemoteDataSourceDependency523c5d4171d86e4232c5Provider: RemoteDataSourceDependency {


    init() {

    }
}
/// ^->RootComponent->RemoteDataSourceComponent
private func factory36859833a5a11b182947e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RemoteDataSourceDependency523c5d4171d86e4232c5Provider()
}
private class SettingsDependencyf7c9e04ec564c713e471Provider: SettingsDependency {
    var logBuilder: LogBuilder {
        return rootComponent.logBuilder
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->FeatureComponent->SettingsComponent
private func factoryac78bd70bb0c4bf01233a9403e3301bb54f80df0(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SettingsDependencyf7c9e04ec564c713e471Provider(rootComponent: parent2(component) as! RootComponent)
}
private class HomeDependency75724d31c7a527afc886Provider: HomeDependency {
    var settingsBuilder: SettingsBuilder {
        return featureComponent.settingsBuilder
    }
    var useCaseBuilder: UseCaseBuilder {
        return rootComponent.useCaseBuilder
    }
    var logBuilder: LogBuilder {
        return rootComponent.logBuilder
    }
    private let featureComponent: FeatureComponent
    private let rootComponent: RootComponent
    init(featureComponent: FeatureComponent, rootComponent: RootComponent) {
        self.featureComponent = featureComponent
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->FeatureComponent->HomeComponent
private func factoryef227228a2a0fde682bdf4413772880be0d08723(_ component: NeedleFoundation.Scope) -> AnyObject {
    return HomeDependency75724d31c7a527afc886Provider(featureComponent: parent1(component) as! FeatureComponent, rootComponent: parent2(component) as! RootComponent)
}
private class FeatureDependencyda755f4b6b7a1b2ecb3bProvider: FeatureDependency {


    init() {

    }
}
/// ^->RootComponent->FeatureComponent
private func factory740cea5182beb7a7ebb5e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return FeatureDependencyda755f4b6b7a1b2ecb3bProvider()
}
private class LogDependency5370fb9e7ce4fa0ddcaaProvider: LogDependency {


    init() {

    }
}
/// ^->RootComponent->LogComponent
private func factory5e879cc5e2ca7f4e5d1fe3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LogDependency5370fb9e7ce4fa0ddcaaProvider()
}

#else
extension RootComponent: Registration {
    public func registerItems() {

        localTable["featureBuilder-FeatureBuilder"] = { [unowned self] in self.featureBuilder as Any }
        localTable["useCaseBuilder-UseCaseBuilder"] = { [unowned self] in self.useCaseBuilder as Any }
        localTable["repositoryBuilder-RepositoryBuilder"] = { [unowned self] in self.repositoryBuilder as Any }
        localTable["remoteDataSourceBuilder-RemoteDataSourceBuilder"] = { [unowned self] in self.remoteDataSourceBuilder as Any }
        localTable["logBuilder-LogBuilder"] = { [unowned self] in self.logBuilder as Any }
    }
}
extension RepositoryComponent: Registration {
    public func registerItems() {
        keyPathToName[\RepositoryDependency.remoteDataSourceBuilder] = "remoteDataSourceBuilder-RemoteDataSourceBuilder"
    }
}
extension UseCaseComponent: Registration {
    public func registerItems() {
        keyPathToName[\UseCaseDependency.repositoryBuilder] = "repositoryBuilder-RepositoryBuilder"
    }
}
extension RemoteDataSourceComponent: Registration {
    public func registerItems() {

    }
}
extension SettingsComponent: Registration {
    public func registerItems() {
        keyPathToName[\SettingsDependency.logBuilder] = "logBuilder-LogBuilder"
    }
}
extension HomeComponent: Registration {
    public func registerItems() {
        keyPathToName[\HomeDependency.settingsBuilder] = "settingsBuilder-SettingsBuilder"
        keyPathToName[\HomeDependency.useCaseBuilder] = "useCaseBuilder-UseCaseBuilder"
        keyPathToName[\HomeDependency.logBuilder] = "logBuilder-LogBuilder"
    }
}
extension FeatureComponent: Registration {
    public func registerItems() {

        localTable["homeBuilder-HomeBuilder"] = { [unowned self] in self.homeBuilder as Any }
        localTable["settingsBuilder-SettingsBuilder"] = { [unowned self] in self.settingsBuilder as Any }
    }
}
extension LogComponent: Registration {
    public func registerItems() {

    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->RootComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->RootComponent->RepositoryComponent", factory89fed910da85ca3e434eb3a8f24c1d289f2c0f2e)
    registerProviderFactory("^->RootComponent->UseCaseComponent", factory53509956f256115531dcb3a8f24c1d289f2c0f2e)
    registerProviderFactory("^->RootComponent->RemoteDataSourceComponent", factory36859833a5a11b182947e3b0c44298fc1c149afb)
    registerProviderFactory("^->RootComponent->FeatureComponent->SettingsComponent", factoryac78bd70bb0c4bf01233a9403e3301bb54f80df0)
    registerProviderFactory("^->RootComponent->FeatureComponent->HomeComponent", factoryef227228a2a0fde682bdf4413772880be0d08723)
    registerProviderFactory("^->RootComponent->FeatureComponent", factory740cea5182beb7a7ebb5e3b0c44298fc1c149afb)
    registerProviderFactory("^->RootComponent->LogComponent", factory5e879cc5e2ca7f4e5d1fe3b0c44298fc1c149afb)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
