import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import { Role } from "./Role";
const { regClass, property } = Laya;

@regClass()
export class Main extends Laya.Script {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private role : Role;

    onStart() {
        console.log("Game start");
    }

    onAwake(): void {
       this.role = new Role();
       this.role.Load();
       this.role.Add(this.scene);
    }

}