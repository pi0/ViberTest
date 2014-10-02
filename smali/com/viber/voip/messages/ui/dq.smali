.class Lcom/viber/voip/messages/ui/dq;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/dp;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/dp;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dq;->a:Lcom/viber/voip/messages/ui/dp;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dq;->a:Lcom/viber/voip/messages/ui/dp;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/dp;->a(Lcom/viber/voip/messages/ui/dp;)V

    .line 95
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dq;->a:Lcom/viber/voip/messages/ui/dp;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/dp;->a(Lcom/viber/voip/messages/ui/dp;)V

    .line 100
    return-void
.end method
