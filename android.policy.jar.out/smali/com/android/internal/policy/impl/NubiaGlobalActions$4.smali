.class Lcom/android/internal/policy/impl/NubiaGlobalActions$4;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;->setAllClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 370
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 371
    .local v0, vibratorModeOn:I
    if-ne v0, v2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #calls: Lcom/android/internal/policy/impl/NubiaGlobalActions;->setRingerModeView()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$400(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 378
    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method
