.class public Lcom/viber/service/contacts/contactbook/AccountContactbookService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/viber/service/contacts/contactbook/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/viber/service/contacts/contactbook/AccountContactbookService;->a:Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/service/contacts/contactbook/AccountContactbookService;->b:Lcom/viber/service/contacts/contactbook/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/viber/service/contacts/contactbook/AccountContactbookService;->b:Lcom/viber/service/contacts/contactbook/a;

    invoke-virtual {v0}, Lcom/viber/service/contacts/contactbook/a;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 16
    sget-object v1, Lcom/viber/service/contacts/contactbook/AccountContactbookService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/viber/service/contacts/contactbook/AccountContactbookService;->b:Lcom/viber/service/contacts/contactbook/a;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/viber/service/contacts/contactbook/a;

    invoke-virtual {p0}, Lcom/viber/service/contacts/contactbook/AccountContactbookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/viber/service/contacts/contactbook/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/viber/service/contacts/contactbook/AccountContactbookService;->b:Lcom/viber/service/contacts/contactbook/a;

    .line 20
    :cond_0
    monitor-exit v1

    .line 21
    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
