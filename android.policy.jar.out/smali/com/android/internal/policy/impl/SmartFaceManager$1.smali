.class Lcom/android/internal/policy/impl/SmartFaceManager$1;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 61
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->userActivity()V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, status:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->controlSmartFaceFunc(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$000(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    goto :goto_0

    .line 70
    .end local v1           #status:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->showSmartFaceScreen()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$100(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 73
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dismissSmartFaceScreen()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$200(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 76
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->needTurnOffScreen:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$300(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v3

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->turnOffScreen(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$400(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    goto :goto_0

    .line 79
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, flag:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->setNeedTurnOffScreen(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$500(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    goto :goto_0

    .line 83
    .end local v0           #flag:Ljava/lang/String;
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->notifyScreenOn()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$600(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 86
    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$1;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    const/4 v3, 0x1

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->updateRotation(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$700(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
