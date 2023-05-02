
class InjectionProviderNotFound  implements Exception{}

class ProviderInjectionDependency{
  final  _container = <dynamic ,dynamic>{};

  static ProviderInjectionDependency singleton =  ProviderInjectionDependency._instance();

  factory  ProviderInjectionDependency(){
    return singleton;
  }

  void register<T>(T service){
    _container[T] = service;
  }

  T get<T>(){
    if (_container.containsKey(T)){
       return _container[T];
    }
    throw InjectionProviderNotFound();
  }

  ProviderInjectionDependency._instance();

  bool hasService<T>(){
   if (_container.isEmpty) return false;
    for (dynamic service in _container.values.toList()){
        if (service is T) return true;
    }
    return false;
  }
}