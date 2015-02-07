.class Lcom/android/server/InputMethodManagerService$10;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->dismissDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2905
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$700(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2909
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$700(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2910
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->access$702(Lcom/android/server/InputMethodManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2912
    :cond_0
    return-void
.end method
