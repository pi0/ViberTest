.class public Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/service/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/viber/service/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;->a:Lcom/viber/service/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    return-void
.end method
