.class Lcom/viber/voip/messages/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/x;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/x;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/viber/voip/messages/ui/y;->a:Lcom/viber/voip/messages/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/k/a;->b(Z)V

    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/ui/y;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->b(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    return-void
.end method
