# selectel_private_k8s
manifests for selectel_private_k8s

Для запуска манифестов требуется создать проект и сервисного пользователя с ролью "Администратор проекта"

```bash
cp secrets.tfvars{_example,}
```

## Инициализация.

```bash
terraform init
```

## Планирование.

```bash
terraform plan -var-file=./secrets.tfvars
```

## Запуск.

```bash
terraform apply -var-file=./secrets.tfvars
```
## Остановка.

```bash
terraform destroy -var-file=./secrets.tfvars
```
