import Loader = Laya.Loader;
import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Animator = Laya.Animator;
import AnimatorState = Laya.AnimatorState;
import Resource = Laya.Resource;

const { regClass, property } = Laya;

@regClass()
export class Role
{
    private _animator: Animator;
    private _curActionName: string = null;
    private sprite : Sprite3D;
    private scene : Scene3D;
    private bOnScene : boolean = false;

    private Resource:any[] = [
        //可以直接加载FBX文件，并配置材质使用的shader和纹理贴图
        { url: "resources/res/Swat/Swat.fbx", type: Loader.HIERARCHY },
        { url: "resources/res/Swat/Idle.fbx", type: Loader.HIERARCHY },
        { url: "resources/res/Swat/Swat_Head.lmat", type: Loader.MATERIAL },
        { url: "resources/res/Swat/Swat_Body.lmat", type: Loader.MATERIAL },
        { url: "resources/res/Swat/Dying.fbx", type: Loader.HIERARCHY }
    ];

    public Load()
    {
        Laya.loader.load(this.Resource).then( (res:any[] )=>{
            this.onFBXComplete(res);         
        });
    }

    public Add(scene : Scene3D)
    {
        if (this.bOnScene)
        {
            return;
        }
        if (this.sprite == null)
        {
            this.scene = scene;
            return;
        }
        this.scene.addChild(this.sprite);
        this.bOnScene = true;
        //Resource.destroyUnusedResources();
    }

    private onFBXComplete(res:any[]): void {
        // 需要使用create()
        this.sprite = res[0].create();
        this.Add(this.scene);
        this.sprite.transform.position = new Vector3(-2, 0, 0);
        let geo = this.sprite.getChildByName("Geo");
        let numChild = geo.numChildren;
        for (let i = 0; i < numChild; i++) {
            let render =  geo.getChildAt(i).getComponent(Laya.SkinnedMeshRenderer);
            if (render != null)
            {
                // render.material = res[i+2];
                for (let j = 0; j < render.materials.length; j++)
                {
                    render.materials[j] = res[i+3-j];
                }
                for (let j = 0; j < render.materials.length; j++)
                {
                    render.sharedMaterials[j] = res[i+3-j];
                }
            }
        }
        //获取动画组件
        this._animator = (<Animator>this.sprite.getComponent(Animator));
        this.addAnimState(res[1], "idle");
        this.addAnimState(res[4], "dying");
        this.playAnim("dying");
    }

    private onPlayComplete()
    {
        if (this._curActionName == "dying")
        {
            this.playAnim("idle");
        }
        else{
            this.playAnim("dying");
        }
    }

    private addAnimState(res : any, name : string, loop : boolean = false)
    {
        let clip = res.create();
        let AnimClip = (<Animator>clip.getComponent(Animator)).getDefaultState().clip;
        //创建动作状态
        var state: AnimatorState = new AnimatorState();
        let AnimState : CustomAnimatorStateScript = <CustomAnimatorStateScript>state.addScript(CustomAnimatorStateScript);
        AnimState.setAnimHandler(()=>{
            this.onPlayComplete();         
        })
        //动作名称
        state.name = name;
        state.clip = AnimClip;
        //循环模式
        state.clip.islooping = loop;
        //为动画组件添加一个动作状态
        this._animator.getControllerLayer(0).addState(state);
    }

    private playAnim(name : string)
    {
        this._curActionName = name;
        this._animator.play(this._curActionName);
    }
}

export class CustomAnimatorStateScript extends Laya.AnimatorStateScript {

    constructor() {
        super();
    }

    private _handler : Function;

    public setAnimHandler(handler : Function): void {
        this._handler = handler;
    }

    /**
    * 动画状态开始时执行。
    */
    onStateEnter(): void {
        console.log("动画开始播放了");
    }
    /**
     * 动画状态运行中
     * @param normalizeTime 0-1动画播放状态
     */
    onStateUpdate(normalizeTime: number): void {
        // console.log("动画状态更新了");
    }

    /**
    * 动画状态退出时执行。
    */
    onStateExit(): void {
        console.log("动画退出了");
        this._handler();
    }
}