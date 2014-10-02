.class Lcom/viber/voip/messages/controller/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/d;->a:Lcom/viber/voip/messages/controller/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/d;->a:Lcom/viber/voip/messages/controller/c/c;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/c/c;->a(Lcom/viber/voip/messages/controller/c/c;)V

    .line 122
    return-void
.end method
