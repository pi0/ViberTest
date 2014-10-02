.class Lcom/viber/voip/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/g/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/g/c;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 85
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-int v0, v0

    .line 86
    iget-object v3, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSensorChanged: value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/g/c;->a(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-static {v3}, Lcom/viber/voip/g/c;->a(Lcom/viber/voip/g/c;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-static {v3, v2}, Lcom/viber/voip/g/c;->a(Lcom/viber/voip/g/c;Z)Z

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "motorola"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-static {v3}, Lcom/viber/voip/g/c;->b(Lcom/viber/voip/g/c;)Z

    move-result v3

    if-ne v0, v3, :cond_4

    .line 108
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 92
    goto :goto_0

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-static {v3, v0}, Lcom/viber/voip/g/c;->b(Lcom/viber/voip/g/c;Z)Z

    .line 98
    iget-object v3, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-virtual {v3}, Lcom/viber/voip/g/c;->b()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {v3, v2}, Lcom/viber/voip/ViberApplication;->enableTouchInput(Z)V

    .line 99
    iget-object v0, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-virtual {v0}, Lcom/viber/voip/g/c;->a()Lcom/viber/voip/g/b;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/viber/voip/g/e;->a:Lcom/viber/voip/g/c;

    invoke-static {v1}, Lcom/viber/voip/g/c;->c(Lcom/viber/voip/g/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 101
    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/g/f;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/g/f;-><init>(Lcom/viber/voip/g/e;Lcom/viber/voip/g/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    move v2, v1

    .line 98
    goto :goto_2
.end method
