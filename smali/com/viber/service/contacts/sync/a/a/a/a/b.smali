.class public Lcom/viber/service/contacts/sync/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/service/contacts/sync/a/a;


# instance fields
.field private a:Lcom/viber/service/contacts/sync/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/viber/service/contacts/sync/a/a/a/a/c;

    const-string/jumbo v1, "com.viber.voip.account"

    invoke-direct {v0, p1, p2, v1}, Lcom/viber/service/contacts/sync/a/a/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a/a/b;->a:Lcom/viber/service/contacts/sync/a/b;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/service/contacts/sync/a/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a/a/b;->a:Lcom/viber/service/contacts/sync/a/b;

    return-object v0
.end method
