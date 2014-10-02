.class public Lcom/viber/voip/messages/controller/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dn;


# instance fields
.field private final a:Lcom/viber/voip/messages/controller/dn;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/viber/voip/messages/controller/dn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/viber/voip/messages/controller/dp;->a:Lcom/viber/voip/messages/controller/dn;

    .line 24
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dp;->b:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/dp;)Lcom/viber/voip/messages/controller/dn;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dp;->a:Lcom/viber/voip/messages/controller/dn;

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/controller/du;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dp;->b:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/dq;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/dq;-><init>(Lcom/viber/voip/messages/controller/dp;Lcom/viber/voip/messages/controller/du;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/viber/voip/messages/controller/dr;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/dr;-><init>(Lcom/viber/voip/messages/controller/dp;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/dp;->a(Lcom/viber/voip/messages/controller/du;)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/viber/voip/messages/controller/ds;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/ds;-><init>(Lcom/viber/voip/messages/controller/dp;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/dp;->a(Lcom/viber/voip/messages/controller/du;)V

    .line 55
    return-void
.end method

.method public a([Ljava/lang/String;Lcom/viber/voip/messages/controller/do;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/viber/voip/messages/controller/dt;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/dt;-><init>(Lcom/viber/voip/messages/controller/dp;[Ljava/lang/String;Lcom/viber/voip/messages/controller/do;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/dp;->a(Lcom/viber/voip/messages/controller/du;)V

    .line 65
    return-void
.end method
