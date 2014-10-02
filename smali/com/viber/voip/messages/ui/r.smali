.class Lcom/viber/voip/messages/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/viber/voip/messages/ui/r;->a:Lcom/viber/voip/messages/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/ui/r;->a:Lcom/viber/voip/messages/ui/q;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/ui/q;->a(Lcom/viber/voip/messages/ui/q;Landroid/view/View;)V

    .line 322
    return-void
.end method
