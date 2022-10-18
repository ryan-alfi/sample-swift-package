//
//  InnoEditorService.swift
//  
//
//  Created by Ari Fajrianda Alfi on 18/10/22.
//

import Flutter

public class InnoEditorService {
    
    static let shared = InnoEditorService()
    
    private var ENGINE_NAME = "InnoEditorEngine"
    private var flutterEngine: FlutterEngine?
    private var flutterViewController: FlutterViewController?
    
    public init() {}
    
    public func startEngine(){
        flutterEngine = FlutterEngine(name: ENGINE_NAME)
        if let flutterEngine = flutterEngine {
            flutterEngine.run()
            
            flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        }
    }
    
    public func stopEngine() {
        flutterViewController = nil
        flutterEngine = nil
    }
    
    public func flutterView() -> FlutterViewController? {
        flutterViewController?.modalPresentationStyle = .fullScreen
        flutterViewController?.modalTransitionStyle = .crossDissolve
        return flutterViewController
    }
}
