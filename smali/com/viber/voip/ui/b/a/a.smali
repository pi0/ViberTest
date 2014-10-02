.class public abstract Lcom/viber/voip/ui/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final C:Landroid/content/Context;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/viber/voip/ui/b/a/a;->C:Landroid/content/Context;

    .line 13
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/b/a/a;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/viber/voip/ui/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method
