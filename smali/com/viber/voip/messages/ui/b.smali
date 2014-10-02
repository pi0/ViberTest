.class Lcom/viber/voip/messages/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/viber/voip/messages/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/a;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/viber/voip/messages/ui/b;->b:Lcom/viber/voip/messages/ui/a;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/b;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/ui/b;->a:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 147
    return-void
.end method
