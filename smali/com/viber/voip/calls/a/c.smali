.class Lcom/viber/voip/calls/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/viber/voip/calls/a/c;->a:Lcom/viber/voip/calls/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/calls/a/c;->a:Lcom/viber/voip/calls/a/a;

    iget-object v1, p0, Lcom/viber/voip/calls/a/c;->a:Lcom/viber/voip/calls/a/a;

    invoke-static {v1}, Lcom/viber/voip/calls/a/a;->a(Lcom/viber/voip/calls/a/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/calls/a/a;->a(Lcom/viber/voip/calls/a/a;I)V

    .line 70
    return-void
.end method
