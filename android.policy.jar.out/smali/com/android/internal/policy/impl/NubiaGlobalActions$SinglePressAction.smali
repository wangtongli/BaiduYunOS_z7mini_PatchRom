.class abstract Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    const/4 v0, 0x0

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    .line 830
    iput p2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessageResId:I

    .line 831
    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 832
    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 833
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "iconResId"
    .parameter "icon"
    .parameter "message"

    .prologue
    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessageResId:I

    .line 839
    iput-object p3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 840
    iput-object p2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 841
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "iconResId"
    .parameter "message"

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    .line 845
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessageResId:I

    .line 846
    iput-object p2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 848
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 862
    const v3, 0x1090045

    const/4 v4, 0x0

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 865
    .local v2, v:Landroid/view/View;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 866
    .local v0, icon:Landroid/widget/ImageView;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 868
    .local v1, messageView:Landroid/widget/TextView;
    const v3, 0x102029c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 869
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 870
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 871
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 876
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 877
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    :goto_1
    return-object v2

    .line 872
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v3, :cond_0

    .line 873
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 879
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method