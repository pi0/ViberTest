.class Lcom/viber/voip/widget/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/TextViewWithDescription;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/TextViewWithDescription;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/viber/voip/widget/af;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/viber/voip/widget/af;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->performClick()Z

    .line 273
    return-void
.end method
